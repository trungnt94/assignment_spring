package exam.model;

import exam.entity.Student;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by TruongNguyen on 5/30/2018.
 */
public interface StudentModel extends PagingAndSortingRepository<Student, Integer> {
}
