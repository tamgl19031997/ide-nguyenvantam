package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.dto.response.ResponseDTO;
import com.laptrinhjavaweb.dto.response.StaffResponseDTO;
import com.laptrinhjavaweb.service.impl.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

    @Autowired
    private BuildingService buildingService;

    @PostMapping
    public BuildingDTO createBuilding(@RequestBody BuildingDTO newBuilding){
        buildingService.save(newBuilding);
        return newBuilding;
    }

    @GetMapping("/{buildingId}/staffs")
    public ResponseDTO loadStaff() {

        ResponseDTO result = new ResponseDTO();
        List<StaffResponseDTO> staffs = new ArrayList<>();
        StaffResponseDTO staffResponseDTO1 = new StaffResponseDTO();
        staffResponseDTO1.setFullName("A");
        staffResponseDTO1.setStaffId(1L);
        staffResponseDTO1.setChecked("checked");
        StaffResponseDTO staffResponseDTO2 = new StaffResponseDTO();
        staffResponseDTO2.setFullName("B");
        staffResponseDTO2.setStaffId(2L);
        staffResponseDTO2.setChecked("checked");
        StaffResponseDTO staffResponseDTO3 = new StaffResponseDTO();
        staffResponseDTO3.setFullName("C");
        staffResponseDTO3.setStaffId(3L);
        staffResponseDTO3.setChecked("");
        staffs.add(staffResponseDTO1);
        staffs.add(staffResponseDTO2);
        staffs.add(staffResponseDTO3);
        result.setMessage("success");
        result.setData(staffs);
        return result;
    }
}
