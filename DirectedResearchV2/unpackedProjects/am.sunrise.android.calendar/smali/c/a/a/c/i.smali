.class final Lc/a/a/c/i;
.super Lc/a/a/c/c;
.source "ImpreciseDateTimeField.java"


# instance fields
.field final synthetic a:Lc/a/a/c/h;


# direct methods
.method constructor <init>(Lc/a/a/c/h;Lc/a/a/m;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lc/a/a/c/i;->a:Lc/a/a/c/h;

    .line 153
    invoke-direct {p0, p2}, Lc/a/a/c/c;-><init>(Lc/a/a/m;)V

    .line 154
    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lc/a/a/c/i;->a:Lc/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/c/h;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lc/a/a/c/i;->a:Lc/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/c/h;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(JJ)I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lc/a/a/c/i;->a:Lc/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/c/h;->b(JJ)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lc/a/a/c/i;->a:Lc/a/a/c/h;

    iget-wide v0, v0, Lc/a/a/c/h;->b:J

    return-wide v0
.end method

.method public d(JJ)J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lc/a/a/c/i;->a:Lc/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/c/h;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method
