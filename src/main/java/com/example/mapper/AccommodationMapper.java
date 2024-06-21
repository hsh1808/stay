package com.example.mapper;

import java.util.List;

import com.example.domain.Ac_picDTO;
import com.example.domain.AccommodationDTO;
import com.example.domain.SearchWordDTO;
import com.example.domain.accommodation_detailDTO;

public interface AccommodationMapper {
	
	public List<AccommodationDTO> getList();
	public void insertaccommdation(AccommodationDTO accommdation);
	public void updateaccommdation(AccommodationDTO accommdation);
	public void deleteaccommdation(AccommodationDTO accommdation);
	
	public List<AccommodationDTO> searchByac_id(AccommodationDTO accommodation);
	public void searchListByTitle(AccommodationDTO accommodation);
	public List<AccommodationDTO> searchByac_type(AccommodationDTO accommdation);
	public List<SearchWordDTO> aside_search(SearchWordDTO searchword);
	public List<SearchWordDTO> rest_room_search(SearchWordDTO searchword); 
	
	public List<accommodation_detailDTO> accommodation_detail(accommodation_detailDTO accommodation_detail);  //숙소 상세페이지를 출력하기위한 매퍼
	public void insertac_pic(Ac_picDTO ac_pic);
	public List<Ac_picDTO> get_list_of_ac_pic(int ac_id);

}