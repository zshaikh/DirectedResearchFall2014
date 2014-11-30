.class public final Lc/a/a/s;
.super Lc/a/a/c/a;
.source "MutableDateTime.java"


# instance fields
.field private a:Lc/a/a/r;

.field private b:Lc/a/a/c;


# direct methods
.method constructor <init>(Lc/a/a/r;Lc/a/a/c;)V
    .locals 0

    .prologue
    .line 1289
    invoke-direct {p0}, Lc/a/a/c/a;-><init>()V

    .line 1290
    iput-object p1, p0, Lc/a/a/s;->a:Lc/a/a/r;

    .line 1291
    iput-object p2, p0, Lc/a/a/s;->b:Lc/a/a/c;

    .line 1292
    return-void
.end method


# virtual methods
.method public a()Lc/a/a/c;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lc/a/a/s;->b:Lc/a/a/c;

    return-object v0
.end method

.method public a(I)Lc/a/a/r;
    .locals 4

    .prologue
    .line 1395
    iget-object v0, p0, Lc/a/a/s;->a:Lc/a/a/r;

    invoke-virtual {p0}, Lc/a/a/s;->a()Lc/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lc/a/a/s;->a:Lc/a/a/r;

    invoke-virtual {v2}, Lc/a/a/r;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lc/a/a/c;->b(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/a/a/r;->a(J)V

    .line 1396
    iget-object v0, p0, Lc/a/a/s;->a:Lc/a/a/r;

    return-object v0
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lc/a/a/s;->a:Lc/a/a/r;

    invoke-virtual {v0}, Lc/a/a/r;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected c()Lc/a/a/a;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lc/a/a/s;->a:Lc/a/a/r;

    invoke-virtual {v0}, Lc/a/a/r;->b()Lc/a/a/a;

    move-result-object v0

    return-object v0
.end method
