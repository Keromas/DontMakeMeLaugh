/// @description init system
randomize();
particuleSystem = part_system_create_layer("Particules", 0);

particule_paper_ball_trail = part_type_create();

part_type_shape(particule_paper_ball_trail, pt_shape_disk);

part_type_size(particule_paper_ball_trail, 0.8, 0.8, -0.05, 0);

part_type_life(particule_paper_ball_trail, 22, 22);

part_type_alpha3(particule_paper_ball_trail, 1, 0.5, 0);