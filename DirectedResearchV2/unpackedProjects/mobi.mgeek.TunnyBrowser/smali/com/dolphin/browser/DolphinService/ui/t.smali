.class Lcom/dolphin/browser/DolphinService/ui/t;
.super Lcom/dolphin/browser/util/f;
.source "DeviceManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/push/data/DeviceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/t;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/t;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->f()Ljava/util/List;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/push/f;->h()Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    return-object v0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/t;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/t;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/t;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/DolphinService/ui/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/aa;->clear()V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/t;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/DolphinService/ui/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/ui/aa;->addAll(Ljava/util/Collection;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/t;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/DolphinService/ui/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/aa;->notifyDataSetChanged()V

    .line 152
    return-void
.end method
