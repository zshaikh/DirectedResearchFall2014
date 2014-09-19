.class public Lcom/example/calender1/JUnitTest;
.super Ljava/lang/Object;
.source "JUnitTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test()V
    .locals 1
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .prologue
    .line 13
    const-string v0, "Not yet implemented"

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 14
    return-void
.end method
