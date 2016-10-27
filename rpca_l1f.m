function [A_full, E_full, t_seed, t_l1f] = rpca_l1f(D)
sr = 20;
sc = sr;
% seed recovery
[A_seed, column_seed, row_seed, t_seed] = gene_seed(D, sr, sc);
% l1 filtering
[A_full, E_full, t_l1f] = l1_filter(D, column_seed, row_seed, A_seed);

