import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/shared/components/add_plant_button.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final DictionaryDocsResponseEntity plant;
  final String userId;

  const PlantCard({super.key, required this.plant, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          plant.commonName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plant.scientificName.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              plant.commonName,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontStyle: FontStyle.italic,
                color: Colors.green[600],
              ),
            ),
            const SizedBox(height: 16),

            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  plant.image,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            _buildInfoSection(context),
            const SizedBox(height: 24),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 89, 33),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
                onPressed:
                    () => AddPlantButton(
                      plant: plant,
                      userId: userId,
                    ).onPressed(context),
                child: const Text(
                  'Добавить в мои растения',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoItem(
          'Частота полива', 
          'Каждые ${plant.wateringFreq} дней',
          titleColor: Colors.blue[500]!,
          valueColor: Colors.blue[700]!,
          dividerColor: Colors.blue[200]!,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildInfoItem(
                'Оптимальная температура', 
                '${plant.optimalTemp} °C',
                titleColor: Colors.orange[700]!,
                valueColor: Colors.orange[900]!,
                dividerColor: Colors.orange[200]!,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildInfoItem(
                'Требуемая влажность', 
                '${plant.humidity}%',
                titleColor: Colors.orange[700]!,
                valueColor: Colors.orange[900]!,
                dividerColor: Colors.orange[200]!,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildInfoItem(
          'Требования к освещению', 
          plant.light,
          titleColor: Colors.yellow[900]!,
          valueColor: Colors.yellow[700]!,
          dividerColor: Colors.yellow[300]!,
        ),
        const SizedBox(height: 16),
        _buildInfoItem(
          'Необходимость удобрений', 
          plant.fertilizer,
          titleColor: Colors.green[700]!,
          valueColor: Colors.green[900]!,
          dividerColor: Colors.green[200]!,
        ),
        const SizedBox(height: 16),
        _buildInfoItem(
          'Информация о пересадке', 
          plant.transplant,
          titleColor: Colors.purple[700]!,
          valueColor: Colors.purple[900]!,
          dividerColor: Colors.purple[200]!,
        ),
      ],
    );
  }

  Widget _buildInfoItem(
    String title, 
    String value, {
    required Color titleColor,
    required Color valueColor,
    required Color dividerColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16, color: titleColor)),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: valueColor),
        ),
        const SizedBox(height: 8),
        Divider(height: 1, color: dividerColor),
      ],
    );
  }
}