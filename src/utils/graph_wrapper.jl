# Feynman/utils/graph_wrapper.jl
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

import LightGraphs: AbstractGraph, is_directed, edgetype, inneighbors, outneighbors,
                    ne, nv, edges, vertices, has_edge, has_vertex


"""
    GraphWrapper{I}
        <: AbstractGraph{I}

Abstract Base Type for objects which contain and behave like a graph.
"""
abstract type GraphWrapper{I} <: AbstractGraph{I} end


"""
    graph(g::AbstractGraph)

Returns internal graph representation of graph.
"""
graph(g::AbstractGraph) = g


"""
    is_directed(g::GraphWrapper)
        === is_directed(graph(g))
"""
is_directed(g::GraphWrapper) = is_directed(graph(g))


"""
    edgetype(g::GraphWrapper)
        === edgetype(graph(g))
"""
edgetype(g::GraphWrapper) = edgetype(graph(g))


"""
    inneighbors(g::GraphWrapper, v)
        === inneighbors(graph(g), v)
"""
inneighbors(g::GraphWrapper, v) = inneighbors(graph(g), v)


"""
    outneighbors(g::GraphWrapper, v)
        === outneighbors(graph(g), v)
"""
outneighbors(g::GraphWrapper, v) = outneighbors(graph(g), v)


"""
    ne(g::GraphWrapper)
        === ne(graph(g))
"""
ne(g::GraphWrapper) = ne(graph(g))


"""
    nv(g::GraphWrapper)
        === nv(graph(g))
"""
nv(g::GraphWrapper) = nv(graph(g))


"""
    edges(g::GraphWrapper)
        === edges(graph(g))
"""
edges(g::GraphWrapper) = edges(graph(g))


"""
    vertices(g::GraphWrapper)
        === vertices(graph(g))
"""
vertices(g::GraphWrapper) = vertices(graph(g))


"""
    has_edge(g::GraphWrapper, args...)
        === has_edge(graph(g), args...)
"""
has_edge(g::GraphWrapper, args...) = has_edge(graph(g), args...)


"""
    has_vertex(g::GraphWrapper, args...)
        === has_vertex(graph(g), args...)
"""
has_vertex(g::GraphWrapper, args...) = has_vertex(graph(g), args...)
