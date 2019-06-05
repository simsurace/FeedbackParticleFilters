module FeedbackParticleFilters

import StatsBase
import LinearAlgebra
import Distributions
#using Distributed
#using PyPlot

include("ParticleEnsembles.jl")
export
    UnweightedParticleEnsemble,
    FPFEnsemble

include("StateModels.jl")
export
    StateModel,
    DiffusionStateModel,
    ScalarDiffusionStateModel,
    Propagator

include("ObservationModels.jl")
export
    ObservationModel,
    DiffusionObservationModel,
    ScalarDiffusionObservationModel,
    PointprocessObservationModel,
    ScalarPointprocessObservationModel,
    Emitter

include("FilteringProblems.jl")
export
    FilteringProblem,
    ContinuousTimeFilteringProblem

include("GainEstimation.jl")
export
    GainEquation,
        PoissonEquation,
            ScalarPoissonEquation,
            ScalarVectorPoissonEquation,
            VectorScalarPoissonEquation,
            VectorPoissonEquation,
    Update!,
    Solve!,
    GainEstimationMethod,
        SemigroupMethod1d

include("Propagation.jl")
export
    ApplyGain!

include("Filters.jl")
export
    Filter,
    ContinuousTimeFilter,
    FeedbackParticleFilter,
    Simulation,
    FPFSimulation,
    run!

include("Utilities.jl")
export
    MSE,
    RelativeMSE


end # module