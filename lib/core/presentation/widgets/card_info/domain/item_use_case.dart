import 'package:kupi_i_tochka/core/presentation/widgets/card_info/data/item.dart';
import 'package:kupi_i_tochka/core/presentation/widgets/card_info/domain/item_repository.dart';

class ItemUseCase {
  final ItemRepository repository;

  ItemUseCase(this.repository);

  List<Item> getItems() {
    return repository.getItems();
  }
}
