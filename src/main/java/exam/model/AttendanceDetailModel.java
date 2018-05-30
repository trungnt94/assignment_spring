package exam.model;

import exam.entity.AttendanceDetail;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;


public interface AttendanceDetailModel extends PagingAndSortingRepository<AttendanceDetail, Integer> {
    List<AttendanceDetail> findByAttendanceSlots_Id(int id);
}
