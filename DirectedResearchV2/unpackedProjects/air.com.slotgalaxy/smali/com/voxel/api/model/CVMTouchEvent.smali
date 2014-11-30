.class public Lcom/voxel/api/model/CVMTouchEvent;
.super Ljava/lang/Object;
.source "CVMTouchEvent.java"


# instance fields
.field touches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/CVMTouch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/api/model/CVMTouchEvent;->touches:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public addTouch(Lcom/voxel/api/model/CVMTouch;)V
    .locals 1
    .param p1, "touch"    # Lcom/voxel/api/model/CVMTouch;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/voxel/api/model/CVMTouchEvent;->touches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public getTouches()[Lcom/voxel/api/model/CVMTouch;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/voxel/api/model/CVMTouchEvent;->touches:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/voxel/api/model/CVMTouch;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/voxel/api/model/CVMTouchEvent;
    check-cast p0, [Lcom/voxel/api/model/CVMTouch;

    return-object p0
.end method
