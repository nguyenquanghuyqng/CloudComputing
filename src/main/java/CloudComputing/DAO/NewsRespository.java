package CloudComputing.DAO;

import org.springframework.data.repository.CrudRepository;

import CloudComputing.Model.News;

public interface NewsRespository extends CrudRepository<News, Integer>{

}
