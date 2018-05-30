package exam.model;

import exam.entity.AttendanceSlots;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

/**
 * Created by TruongNguyen on 5/30/2018.
 */
public interface AttendanceSlotsModel extends PagingAndSortingRepository<AttendanceSlots, Integer> {
    List<AttendanceSlots> findByNgayDiemDanhBetween(long begin, long end);
}
