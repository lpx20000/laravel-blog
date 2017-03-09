<?php


/**
 * @param $model
 * @return string
 */
function getClassName() {
    list($model, $method) = explode('.', Route::currentRouteName());
    return $model;
}