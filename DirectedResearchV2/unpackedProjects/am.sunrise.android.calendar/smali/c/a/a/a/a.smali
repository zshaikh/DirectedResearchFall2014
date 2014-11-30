.class public abstract Lc/a/a/a/a;
.super Lc/a/a/a/b;
.source "AbstractDateTime.java"

# interfaces
.implements Lc/a/a/x;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lc/a/a/a/b;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public c()I
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lc/a/a/a/a;->b()Lc/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a;->E()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/a/a/c;->a(J)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lc/a/a/a/a;->b()Lc/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a;->z()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/a/a/c;->a(J)I

    move-result v0

    return v0
.end method
