//
//  Exercise.swift
//  MyWorkout
//
//  Created by Kulnis Chattratitiphan on 12/9/2564 BE.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    enum ExerciseEnum: CustomStringConvertible {
        case jumpingJacks
        case highKnee
        case squat
        case stepUp
        case pushUp
        case burpee
        case sitUp
        case sunSalute
        var description: String {
            switch self {
            case .jumpingJacks:
                return NSLocalizedString("Jumping Jacks", comment: "exercise")
            case .highKnee:
                return NSLocalizedString("High Knee", comment: "exercise")
            case .squat:
                return NSLocalizedString("Squat", comment: "exercise")
            case .stepUp:
                return NSLocalizedString("Step Up", comment: "exercise")
            case .pushUp:
                return NSLocalizedString("Push Up", comment: "exercise")
            case .burpee:
                return NSLocalizedString("Burpee", comment: "exercise")
            case .sitUp:
                return NSLocalizedString("Sit Up", comment: "exercise")
            case .sunSalute:
                return NSLocalizedString("Sun Salute", comment: "exercise")
            }
        }
    }
}

extension Exercise {
    static let exercises = [Exercise(exerciseName: String(describing: ExerciseEnum.jumpingJacks), videoName: "jumping-jack"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.highKnee), videoName: "high-knee"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.squat), videoName: "squat"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.stepUp), videoName: "step-up"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.pushUp), videoName: "push-up"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.burpee), videoName: "burpee"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.sitUp), videoName: "sit-up"),
                            Exercise(exerciseName: String(describing: ExerciseEnum.sunSalute), videoName: "sun-salute")]
}
