/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_merge_sort.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sapril <sapril@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/06 18:44:31 by sapril            #+#    #+#             */
/*   Updated: 2019/12/06 18:47:32 by sapril           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/libft.h"

static void copy_arr_to_tmp(int left_arr[], int right_arr[], int arr[])
{
	while (left_i < middle - low + 1)
	{
		left_arr[left_i] = arr[low + left_i];
		left_i++;
	}
	while (right_i < high - middle)
	{
		right_arr[right_i] = arr[middle + right_i + 1];
		right_i++;
	}
}

static void merge(int arr[], t_merge_sort *m_s)
{
	int left_i;
	int right_i;
	int arr_i;
	int left_arr[middle - low + 1];
	int right_arr[high - middle];

	left_i = 0;
	right_i = 0;
	arr_i = low;

	while (left_i < middle - low + 1 && right_i < high - middle)
	{
		if (left_arr[left_i] < right_arr[right_i])
			arr[arr_i] = left_arr[left_i++];
		else
			arr[arr_i] = right_arr[right_i++];
		arr_i++;
	}

	while (left_i < middle - low + 1)
		arr[arr_i++] = left_arr[left_i++];

	while (right_i < high - middle)
		arr[arr_i++] = right_arr[right_i++];
}

static void init_merge_struct(int arr[], int low, int high, t_merge_sort *m_s)
{
	m_s->low = low;
	m_s->high = high;
	m_s->middle = 1 + (low + high) / 2;
	m_s->left_arr_size = middle - low + 1;
	m_s->right_arr_size = high - middle;
	m_s->left_arr = (int *)ft_memalloc(m_s->left_arr_size);
	m_s->right_arr = (int *)ft_memalloc(m_s->right_arr_size);
}

void merge_sort(int arr[], int low, int high)
{
	t_merge_sort *m_s;
	init_merge_struct(arr, low, high, m_s)
	if (low < high)
	{
		merge_sort(arr, m_s->low, m_s->middle, m_s);
		merge_sort(arr, m_s->middle + 1, m_s->high);
		merge(arr, m_s);
	}
	free(m_s->left_arr);
	free(m_s->right_arr_arr);
	free(m_s);
}
