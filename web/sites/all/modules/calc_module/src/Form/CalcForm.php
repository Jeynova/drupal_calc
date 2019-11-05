<?php
namespace Drupal\calc_module\Form;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Ajax\AjaxResponse;
use Drupal\Core\Ajax\HtmlCommand;
/**
 * Our simple form class.
 */
class CalcForm extends FormBase {
    /**
     * {@inheritdoc}
     */
    public function getFormId() {
        return 'calc_form';
    }
    /**
     * {@inheritdoc}
     */
    public function buildForm(array $form, FormStateInterface $form_state) {

        $form['number_1'] = [
            '#type' => 'textfield',
            '#title' => $this->t('First number'),
        ];
        $form['number_2'] = [
            '#type' => 'textfield',
            '#title' => $this->t('Second number'),
        ];
      $form['select'] = [
        '#type' => 'select',
        '#title' => $this
          ->t('operator'),
        '#options' => [
          '1' => $this
            ->t('+'),
          '2' => $this
            ->t('-'),
          '3' => $this
            ->t('*'),
          '4' => $this
            ->t('/'),
        ],
      ];

        $form['actions'] = [
            '#type' => 'button',
            '#value' => $this->t('Calculate'),
            '#ajax' => [
                'callback' => '::setMessage',
            ]
        ];
      $form['message'] = [
        '#type' => 'markup',
        '#markup' => '<div class="result_message"></div>',
      ];
        return $form;
    }

  /*public function validateForm(array &$form, FormStateInterface $form_state) {
    parent::validateForm($form, $form_state);
    $firstNumber = $form_state->getValue('number_1');
    $secondNumber = $form_state->getValue('number_2');

    if (!is_numeric($firstNumber)){
       $form_state->setErrorByName('number_1', $this->t('This is not a number'));

    }
    if (!is_numeric($secondNumber)){
       $form_state->setErrorByName('number_2', $this->t('This is not a number'));

    }
  }*/

  public function setMessage(array &$form, FormStateInterface $form_state) {

        $response = new AjaxResponse();
        $stringOperator = $form['select']['#options'][$form_state->getValue('select')];
        $firstNumber=$form_state->getValue('number_1');
        $secondNumber=$form_state->getValue('number_2');


      switch($stringOperator) {
        case '+': $result = $firstNumber + $secondNumber;
          break;

        case '-': $result = $firstNumber - $secondNumber;
          break;

        case '/': $result = $firstNumber / $secondNumber;
          break;

        case '*': $result = $firstNumber * $secondNumber;
          break;


      }
      if (!is_numeric($firstNumber) || !is_numeric($secondNumber)){
        $response->addCommand(
          new HtmlCommand(
            '.result_message',
            '<div class="result_message">Resultat : L une de vos valeurs n est pas un nombre'
          )
        );
        return $response;
      }
    $response->addCommand(
      new HtmlCommand(
        '.result_message',
        '<div class="result_message">Resultat : '.$result
      )
    );
    return $response;


    }


    /**
     * {@inheritdoc}
     */
    public function submitForm(array &$form, FormStateInterface $form_state) {

    }
}
