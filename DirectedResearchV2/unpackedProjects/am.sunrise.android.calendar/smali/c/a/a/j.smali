.class final Lc/a/a/j;
.super Lc/a/a/b/c;
.source "DateTimeZone.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Lc/a/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/i;)Lc/a/a/a;
    .locals 0

    .prologue
    .line 639
    return-object p0
.end method

.method public a()Lc/a/a/i;
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lc/a/a/a;
    .locals 0

    .prologue
    .line 636
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
