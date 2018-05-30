package exam.model;

import exam.entity.Timeslots;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by TruongNguyen on 5/30/2018.
 */
public interface TimeslotsModel extends PagingAndSortingRepository<Timeslots, Integer> {
}
