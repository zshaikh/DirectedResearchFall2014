.class final enum Lcom/chartboost/sdk/impl/ba$h$a$2;
.super Lcom/chartboost/sdk/impl/ba$h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ba$h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/ba$h$a;-><init>(Ljava/lang/String;ILcom/chartboost/sdk/impl/ba$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/impl/ba$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(",
            "Lcom/chartboost/sdk/impl/ba",
            "<TK;TV;TM;>;)",
            "Lcom/chartboost/sdk/impl/ba$h",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Lcom/chartboost/sdk/impl/ba$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/ba$e;-><init>(Lcom/chartboost/sdk/impl/ba;)V

    return-object v0
.end method
