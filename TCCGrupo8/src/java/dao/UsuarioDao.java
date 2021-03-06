package dao;

import entity.Usuario;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import javax.persistence.Entity;

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
        List<Usuario> usuarioList;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();

        Query query = session.createQuery("from entity.Usuario");
        usuarioList = query.list();

        session.getTransaction().commit();
        session.clear();

        return usuarioList;
    }

    public Usuario getAutenticacao(String emailLogin, String senhaLogin) {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.getTransaction();
            Query query = session.createQuery("FROM entity.Usuario"
                    + " WHERE email = ? AND senha = ?");
            query.setParameter(0, emailLogin);
            query.setParameter(1, senhaLogin);
            return (Usuario) query.uniqueResult();
    }
}
