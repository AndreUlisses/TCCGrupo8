package dao;

import conexao.ConnectionManager;
import entity.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

public class UsuarioDao {

    public void saveOrUpdate(Usuario usuario) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        
        session.saveOrUpdate(usuario);
        
        session.getTransaction().commit();
        session.close();
    }

    public void excluir(Usuario usuario) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        
        session.delete(usuario);

        session.getTransaction().commit();
        session.close();
    }

    public Usuario getById(Integer id) {
        Usuario usuario;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        
        usuario = (Usuario) session.get(Usuario.class, id); //Classe, Id
        
        session.getTransaction().commit();
        session.close();
        
        return usuario;
    }
    public List<Usuario> listar() {
        List<Usuario> lista = new ArrayList<Usuario>();
        try {
            String QUERY_DETALHE = "select * from USUARIO";
            PreparedStatement stmt = null;
            Connection conn = ConnectionManager.getConnection();

            ResultSet rs = null;

            stmt = conn.prepareStatement(QUERY_DETALHE);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("idUsuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                lista.add(usuario);
            }
            conn.close();

        } catch (Exception ex) {
            
            ex.printStackTrace();
            
        } finally {
            
            return lista;
            
        }
    }

}
