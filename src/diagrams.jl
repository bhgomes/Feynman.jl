# Feynman/diagrams.jl
#
# MIT License
#
# Copyright (c) 2019 Brandon Gomes
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import LightGraphs: AbstractEdge
import MetaGraphs: MetaGraph, MetaDiGraph

include("utils/graph_wrapper.jl")

export Topology, Diagram, topologies


"""
"""
struct Topology{I} <: GraphWrapper{I}
    graph::MetaGraph{I}
end


"""
"""
graph(t::Topology) = t.graph


"""
"""
function (::Type{Topology})(mdg::MetaDiGraph)
    Topology(MetaGraph(mdg))
end


"""
"""
function topologies(loops::Integer, external::Integer)
    error("Not Implemented")
end


"""
"""
function topologies(loops::Integer, incoming::Integer, outgoing::Integer)
    topologies(loops, incoming + outgoing)
end


"""
"""
function topologies(loops::Integer, inout::Pair{<: Integer, <: Integer})
    topologies(loops, first(inout), last(inout))
end


"""
"""
struct Diagram{I} <: AbstractGraph{I}
    graph::MetaDiGraph{I}
end


"""
"""
graph(t::Diagram) = t.graph
