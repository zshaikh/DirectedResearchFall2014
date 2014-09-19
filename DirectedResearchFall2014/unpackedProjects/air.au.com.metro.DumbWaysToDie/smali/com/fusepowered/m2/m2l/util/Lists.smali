.class public Lcom/fusepowered/m2/m2l/util/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    move-object v1, v0

    .line 50
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 45
    .restart local p0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    instance-of v1, p0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 46
    check-cast p0, Ljava/util/ArrayList;

    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    goto :goto_0

    .line 49
    .restart local p0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0, v0}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    move-object v1, v0

    .line 50
    goto :goto_0
.end method
