/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author Gilberto Manunta
 */
public class PostFactory {

    //DB creation
    private String connectionString;
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    public String getConnectionString(){
            return this.connectionString;
    }

    //Pattern Design Singleton
    private static PostFactory singleton;

    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }

    private ArrayList<Post> listaPost = new ArrayList<Post>();

    private PostFactory() {}

public Post getPostById(int id) {
        UserFactory utenteFactory = UserFactory.getInstance();

        try {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "ammdb", "ammdb");
            
            String query = 
                      "select * from posts "
                    + "join posttype on posts.tipo = posttype.posttype_id "
                    + "where post_id = ?";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setInt(1, id);
            
            // Esecuzione query
            ResultSet res = stmt.executeQuery();

            // ciclo sulle righe restituite
            if (res.next()) {
                Post current = new Post();
                //imposto id del post
                current.setId(res.getInt("post_id"));
                
                //impost il contenuto del post
                current.setContent(res.getString("content"));
                
                //imposto il tipo del post
                current.setPostType(this.postTypeFromString(res.getString("nome")));
                
                //imposto l'autore del post
                User autore = utenteFactory.getUserById(res.getInt("autore"));
                current.setUser(autore);

                stmt.close();
                conn.close();
                return current;
            }

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List getPostList(User usr) {

        List<Post> listaPost = new ArrayList<Post>();
        
        try {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "ammdb", "ammdb");
            
            String query = 
                      "select * from posts "
                    + "join posttype on posts.type = posttype.posttype_id "
                    + "where post_id = ?";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setInt(1, usr.getId());
            
            // Esecuzione query
            ResultSet res = stmt.executeQuery();

            // ciclo sulle righe restituite
            if (res.next()) {
                Post current = new Post();
                //imposto id del post
                current.setId(res.getInt("post_id"));
                
                //impost il contenuto del post
                current.setContent(res.getString("content"));
                
                //imposto il tipo del post
                current.setPostType(this.postTypeFromString(res.getString("nome")));
              
                current.setUser(usr);
                
                listaPost.add(current);
            }

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaPost;
    }
    
    public void addNewPost(Post post){
        try {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "gato", "gato");
            
            String query = 
                      "insert into posts (post_id, content, type, author) "
                    + "values (default, ? , ? , ? )";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setString(1, post.getContent());

            stmt.setInt(2, this.postTypeFromEnum(post.getPostType()));
            
            stmt.setInt(3, post.getUser().getId());
            
            // Esecuzione query
            stmt.executeUpdate();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    private Post.Type postTypeFromString(String type){
        if(type.equals("TEXT"))
            return Post.Type.TEXT;
        else if(type.equals("IMAGE"))
            return Post.Type.IMAGE;
        else
            return Post.Type.LINK;
    }
    
    private int postTypeFromEnum(Post.Type type){
        //È realizzabile in modo più robusto rispetto all'hardcoding degli indici
        if(type == Post.Type.TEXT)
                return 1;
        else if(type==Post.Type.IMAGE)
                return 2;
        else
            return 3;
    }
}
