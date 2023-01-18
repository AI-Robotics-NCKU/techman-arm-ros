from stabilizer import Stabilizer
# Introduce scalar stabilizers for pose.
pose_stabilizers = [Stabilizer(
                    state_num=2,
                    measure_num=1,
                    cov_process=0.1,
                    cov_measure=0.1) for _ in range(6)]

# for eyes
eyes_stabilizers = [Stabilizer(
                    state_num=2,
                    measure_num=1,
                    cov_process=0.1,
                    cov_measure=0.1) for _ in range(6)]

# for mouth_dist
mouth_dist_stabilizer = Stabilizer(
                    state_num=2,
                    measure_num=1,
                    cov_process=0.1,
                    cov_measure=0.1
                    )