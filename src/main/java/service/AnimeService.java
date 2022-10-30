package service;

import java.util.List;

import model.GaiAnimeModel;
import repository.GaiAnimeRepository;

public class AnimeService {
	private final GaiAnimeRepository AnimeRepo = new GaiAnimeRepository();

	public List<GaiAnimeModel> getAllData() {
		return AnimeRepo.readAll();
	}

	public List<GaiAnimeModel> getStatusDelete() {
		return AnimeRepo.getStatusDelete();
	}

	public List<GaiAnimeModel> getStatusNonDelete() {
		return AnimeRepo.getStatusNonDelete();
	}

	public void delete(Integer id) {
		GaiAnimeModel g = AnimeRepo.readByID(id);
		AnimeRepo.delete(g);
	}

	public void update(GaiAnimeModel gai) {
		AnimeRepo.update(gai);
	}

	public GaiAnimeModel readByID(Integer id) {

		return AnimeRepo.readByID(id);
	}

	public void deleteDetail(Integer id) {
		GaiAnimeModel g = AnimeRepo.readByID(id);
		AnimeRepo.delete(g);
	}
	
	public List<GaiAnimeModel> find(String status, String name, String price ) {
	List<GaiAnimeModel> gai = AnimeRepo.find(status, name, price);
	return gai;
	}

}
