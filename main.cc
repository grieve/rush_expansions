/*
	* File:	main.cpp
	* Author: TheGrieve
	*
	* Created on 28 May 2010, 20:08
	*/

/*
	*
	*/

#include <iostream>
#include "../stile/Stile.h"
#include "DemoWorld.h"

#include <time.h>

stile::Control*	gControl;
void init
(
	int argc,
	char** argv
)
{
	gControl = &stile::getControl();
	gControl->engine = new stile::Engine("Rush Expansions");
	gControl->engine->setWorld(new DemoWorld());
}

int main	(
		int argc,
		char** argv
	)
{
	init(argc, argv);
	while(true)
	{
		gControl->time->update();
	}
}
