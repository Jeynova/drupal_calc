<?php
namespace Drupal\calc_module\Plugin\Block;
use Drupal\Core\Annotation\Translation;
use Drupal\Core\Block\Annotation\Block;
use Drupal\Core\Block\BlockBase;
/**
 * Provides a 'Drupal Block' Block.
 *
 * @Block(
 *   id = "drupal_block",
 *   admin_label = @Translation("Drupal block"),
 *   category = @Translation("Drupal  block"),
 * )
 */
class DrupalBlock extends BlockBase {
    /**
     * {@inheritdoc}
     */
  public function build() {
    $form = \Drupal::formBuilder()->getForm('Drupal\calc_module\Form\CalcForm');
    return $form;
  }

}
