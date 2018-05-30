package exam.model;

import exam.entity.StudentClass;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by TruongNguyen on 5/30/2018.
 */
public interface StudentClassModel extends PagingAndSortingRepository<StudentClass, Integer> {
}
