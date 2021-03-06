/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztasnadi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/17 11:00:52 by ztasnadi          #+#    #+#             */
/*   Updated: 2018/02/15 14:01:32 by ztasnadi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libftprintf.h>

void	ft_putstr(char const *str)
{
	int i;

	i = 0;
	if (str != NULL)
	{
		while (str[i] != 0)
		{
			ft_putchar(str[i]);
			i++;
		}
	}
}
