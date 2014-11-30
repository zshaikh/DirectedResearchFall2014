.class Lcom/dolphin/browser/theme/ag;
.super Lcom/dolphin/browser/core/a;
.source "ThemeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/dolphin/browser/theme/data/a;",
        ">",
        "Lcom/dolphin/browser/core/a;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/dolphin/browser/theme/ag;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Lcom/dolphin/browser/core/a;-><init>()V

    .line 1023
    iput-object p2, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    .line 1024
    iput p3, p0, Lcom/dolphin/browser/theme/ag;->c:I

    .line 1025
    iput-boolean p4, p0, Lcom/dolphin/browser/theme/ag;->d:Z

    .line 1026
    return-void
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/theme/data/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1045
    const/4 v0, 0x0

    .line 1047
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1031
    iget v0, p0, Lcom/dolphin/browser/theme/ag;->c:I

    .line 1033
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1038
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/ag;->a(I)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1053
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 1065
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1066
    :cond_0
    const/4 v0, 0x1

    .line 1070
    :goto_0
    return v0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 1070
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->h_()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView2(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1076
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/ag;->getItemViewType(I)I

    move-result v0

    .line 1077
    if-nez v0, :cond_2

    .line 1078
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/dolphin/browser/theme/c;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/dolphin/browser/theme/p;

    if-eqz v0, :cond_9

    .line 1081
    :cond_0
    if-eqz p2, :cond_1

    .line 1082
    const-string v0, "ThemeActivity2"

    const-string v1, "recreating SkinItem with view type: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/dolphin/browser/theme/ag;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1084
    :cond_1
    new-instance p2, Lcom/dolphin/browser/theme/q;

    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget v1, p0, Lcom/dolphin/browser/theme/ag;->c:I

    invoke-direct {p2, v0, v1}, Lcom/dolphin/browser/theme/q;-><init>(Landroid/content/Context;I)V

    move-object v1, p2

    .line 1103
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/ag;->a(I)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 1104
    if-nez v0, :cond_8

    .line 1105
    const-string v0, "ThemeActivity2"

    const-string v2, "binding addItem "

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    .line 1109
    check-cast v0, Lcom/dolphin/browser/theme/q;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/ag;->a(I)Lcom/dolphin/browser/theme/data/a;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dolphin/browser/theme/ag;->d:Z

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/theme/q;->a(Lcom/dolphin/browser/theme/data/a;Z)V

    .line 1110
    return-object v1

    .line 1086
    :cond_2
    if-ne v0, v4, :cond_5

    .line 1087
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/dolphin/browser/theme/c;

    if-nez v0, :cond_9

    .line 1089
    :cond_3
    if-eqz p2, :cond_4

    .line 1090
    const-string v0, "ThemeActivity2"

    const-string v1, "recreating FakedSkinItem with view type: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/dolphin/browser/theme/ag;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1092
    :cond_4
    new-instance p2, Lcom/dolphin/browser/theme/c;

    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget v1, p0, Lcom/dolphin/browser/theme/ag;->c:I

    invoke-direct {p2, v0, v1}, Lcom/dolphin/browser/theme/c;-><init>(Landroid/content/Context;I)V

    move-object v1, p2

    goto :goto_0

    .line 1095
    :cond_5
    if-eqz p2, :cond_6

    instance-of v0, p2, Lcom/dolphin/browser/theme/p;

    if-nez v0, :cond_9

    .line 1097
    :cond_6
    if-eqz p2, :cond_7

    .line 1098
    const-string v0, "ThemeActivity2"

    const-string v1, "recreating AddItem with view type: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/dolphin/browser/theme/ag;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1100
    :cond_7
    new-instance p2, Lcom/dolphin/browser/theme/p;

    iget-object v0, p0, Lcom/dolphin/browser/theme/ag;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget v1, p0, Lcom/dolphin/browser/theme/ag;->c:I

    invoke-direct {p2, v0, v1}, Lcom/dolphin/browser/theme/p;-><init>(Landroid/content/Context;I)V

    move-object v1, p2

    goto :goto_0

    .line 1107
    :cond_8
    const-string v2, "ThemeActivity2"

    const-string v3, "binding view with id: %d, type: %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_9
    move-object v1, p2

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x4

    return v0
.end method
