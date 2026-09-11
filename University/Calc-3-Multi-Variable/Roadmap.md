# Multivariable Calculus Roadmap

A structured roadmap for learning **Multivariable Calculus**, from 3D vectors and space curves to multiple integration and vector calculus.

---

## 📦 Block 1: 3D Space & Vectors

**The setup**

* Vectors in 2D/3D
* Vector operations
* Dot product

  * Angle between vectors
  * Projections
* Cross product

  * Area
  * Normal vectors
* Equations of lines and planes in 3D
* Cylinders and quadric surfaces

  * Spheres
  * Paraboloids
  * Ellipsoids
  * Recognizing shapes from equations

---

## 📦 Block 2: Vector-Valued Functions

* Space curves

  * `r(t) = <x(t), y(t), z(t)>`
* Derivatives and integrals of vector functions

  * Velocity
  * Acceleration
* Arc length
* Curvature
* Motion in space

  * Position
  * Velocity
  * Acceleration
  * Physics-based applications

---

## 📦 Block 3: Differentiation in Several Variables

* Functions of several variables
* Domains
* Level curves and level surfaces
* Limits and continuity

  * Multivariable limits are more subtle than single-variable limits
  * A limit must exist along **every possible path** toward the point
* Partial derivatives
* Tangent planes
* Linear approximations
* Multivariable chain rule
* Directional derivatives
* Gradient vectors
* Maximum and minimum values

  * Critical points
  * Second derivative test
* Lagrange multipliers

  * Optimization under constraints

---

## 📦 Block 4: Multiple Integration

* Double integrals over rectangles
* Double integrals over general regions
* Double integrals in polar coordinates
* Applications

  * Area
  * Volume
  * Mass
  * Center of mass
* Triple integrals

  * Rectangular coordinates
  * Cylindrical coordinates
  * Spherical coordinates
* Change of variables
* Jacobians

---

## 📦 Block 5: Vector Calculus

> Usually the final unit. Courses sometimes run out of time here, so getting ahead of this block is worthwhile.

* Vector fields
* Line integrals

  * Scalar fields
  * Vector fields
* Fundamental Theorem for Line Integrals

  * Conservative vector fields
* Green's Theorem

  * Relates a line integral around a closed curve to a double integral
* Curl
* Divergence
* Surface integrals
* Stokes' Theorem
* Divergence Theorem

---

# 📝 Honest Notes

### 1. Blocks 1–3 are the foundation

In many courses, **Blocks 1–3 make up a large portion of the exam material** and are highly learnable once the patterns become familiar.

Much of the work becomes mechanical after you understand:

* What the problem is asking
* Which mathematical tool applies
* What formula represents that tool
* How to execute the calculation correctly

---

### 2. Block 5 is often rushed

**Vector Calculus** is frequently taught near the end of the semester, which means it can receive less practice time.

The concepts themselves aren't necessarily harder, but there are many new relationships to remember:

```text
Line Integrals
      ↓
Green's Theorem
      ↓
Curl / Divergence
      ↓
Surface Integrals
      ↓
Stokes' Theorem
      ↓
Divergence Theorem
```

Getting familiar with this block early can prevent last-minute cramming.

---

### 3. Block 3 has practical importance

Several concepts from **Block 3** are directly connected to optimization and machine learning.

For example:

```text
Partial Derivatives
       ↓
Gradient
       ↓
Directional Derivative
       ↓
Optimization
       ↓
Gradient Descent
```

**Lagrange multipliers** also provide the mathematical foundation for constrained optimization.

These ideas can become useful beyond calculus, including areas such as:

* Machine learning
* Optimization
* Infrastructure cost optimization
* Resource allocation
* ML-adjacent DevOps tooling

---

# 🎯 Final Roadmap

```text
Block 1
3D Space & Vectors
        ↓
Block 2
Vector-Valued Functions
        ↓
Block 3
Multivariable Differentiation
        ↓
Block 4
Multiple Integration
        ↓
Block 5
Vector Calculus
```

**Goal:** Build understanding progressively rather than memorizing formulas in isolation.
