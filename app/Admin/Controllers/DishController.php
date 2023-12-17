<?php

namespace App\Admin\Controllers;

use App\Models\Dish;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class DishController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Dish';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Dish());

        $grid->column('id', __('Id'));
        $grid->column('category_id', __('Category id'));
        $grid->column('origin_id', __('Origin id'));
        $grid->column('name', __('Name'));
        $grid->column('price', __('Price'));
        $grid->column('preparation_time', __('Preparation time'));
        $grid->column('description', __('Description'));
        $grid->column('photo', __('Photo'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Dish::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category_id', __('Category id'));
        $show->field('origin_id', __('Origin id'));
        $show->field('name', __('Name'));
        $show->field('price', __('Price'));
        $show->field('preparation_time', __('Preparation time'));
        $show->field('description', __('Description'));
        $show->field('photo', __('Photo'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Dish());

        $form->number('category_id', __('Category id'));
        $form->number('origin_id', __('Origin id'));
        $form->text('name', __('Name'));
        $form->decimal('price', __('Price'));
        $form->number('preparation_time', __('Preparation time'));
        $form->textarea('description', __('Description'));
        $form->text('photo', __('Photo'));

        return $form;
    }
}
