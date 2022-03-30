set.seed(20200302)

# input the data
rats <- tribble(
  ~rat_burrow, ~pizza_distance,
  1, 0.01,
  1, 0.05,
  1, 0.08,
  0, 0.1,
  0, 0.12,
  1, 0.2,
  1, 0.3,
  1, 0.5,
  1, 0.75,
  0, 0.9,
  1, 1,
  0, 1.2,
  0, 2.2,
  0, 2.3,
  0, 2.5,
  1, 3,
  0, 3.5,
  0, 4,
  0, 5,
  0, 7
) %>%
  mutate(rat_burrow = factor(rat_burrow))

# split into training and testing data
split <- initial_split(rats, prop = 0.75) 
rats_training <- training(split) 
rats_testing <- testing(split)

rats_k1 <- vfold_cv(data = rats_training,
                    v = 3)

rats_k3 <- vfold_cv(data = rats_training,
                    v = 3)

rats_kn <- vfold_cv(data = rats_training,
                    v = 3)