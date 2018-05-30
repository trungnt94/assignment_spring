package exam.model;

import exam.entity.ClassInfo;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by TruongNguyen on 5/30/2018.
 */
public interface ClassInfoModel extends PagingAndSortingRepository<ClassInfo, Integer> {
}
