.class Lcom/dolphin/browser/tablist/cl;
.super Lcom/dolphin/browser/util/f;
.source "TabThumbLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/tablist/bk;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ch;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ch;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/dolphin/browser/tablist/cl;->b:Ljava/util/List;

    .line 127
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/cl;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 152
    iget-object v2, p0, Lcom/dolphin/browser/tablist/cl;->b:Ljava/util/List;

    .line 153
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v7

    .line 156
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    .line 157
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 158
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 160
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_0

    .line 164
    invoke-virtual {v4}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 165
    invoke-virtual {v4}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 169
    if-ltz v0, :cond_2

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bk;

    .line 171
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 172
    iget-object v5, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v5, v0}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/ch;Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ch;->c(Lcom/dolphin/browser/tablist/ch;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 174
    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ch;->c(Lcom/dolphin/browser/tablist/ch;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 180
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bk;

    .line 181
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v5

    .line 182
    invoke-virtual {v4, v5}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v5

    .line 183
    if-gez v5, :cond_3

    .line 179
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 186
    :cond_3
    iget-object v5, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v5, v0}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/ch;Lcom/dolphin/browser/tablist/bk;)V

    .line 187
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/cl;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 198
    :cond_4
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 190
    :cond_5
    monitor-enter v0

    .line 191
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Lcom/dolphin/browser/tablist/bk;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/tablist/cl;->e([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_3
    :try_start_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 194
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method protected varargs a([Lcom/dolphin/browser/tablist/bk;)V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/cl;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/ch;)Lcom/dolphin/browser/tablist/ck;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/ch;)Lcom/dolphin/browser/tablist/ck;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/tablist/ck;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/ch;)Lcom/dolphin/browser/tablist/ck;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/tablist/ck;->a(Lcom/dolphin/browser/tablist/bk;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cl;->a:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ch;->b(Lcom/dolphin/browser/tablist/ch;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/dolphin/browser/tablist/cm;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/tablist/cm;-><init>(Lcom/dolphin/browser/tablist/cl;Lcom/dolphin/browser/tablist/bk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method protected synthetic a_([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, [Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/cl;->a([Lcom/dolphin/browser/tablist/bk;)V

    return-void
.end method
