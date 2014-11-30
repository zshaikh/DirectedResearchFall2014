.class Lam/sunrise/android/calendar/ui/event/details/t;
.super Ljava/lang/Object;
.source "EventDetailsAttendeesFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<[",
        "Lam/sunrise/android/calendar/api/models/datas/Person;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/n;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/details/n;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/event/details/n;Lam/sunrise/android/calendar/ui/event/details/o;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/t;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;[Lam/sunrise/android/calendar/api/models/datas/Person;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<[",
            "Lam/sunrise/android/calendar/api/models/datas/Person;",
            ">;[",
            "Lam/sunrise/android/calendar/api/models/datas/Person;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/n;->a(Lam/sunrise/android/calendar/ui/event/details/n;Z)Z

    .line 296
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->g(Lam/sunrise/android/calendar/ui/event/details/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/ab;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 298
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/ab;->notifyDataSetChanged()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/ab;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/n;->a(Lam/sunrise/android/calendar/ui/event/details/n;Z)Z

    .line 305
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/event/details/ab;->a([Lam/sunrise/android/calendar/api/models/datas/Person;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/d",
            "<[",
            "Lam/sunrise/android/calendar/api/models/datas/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/ab;->a()[Lam/sunrise/android/calendar/api/models/datas/Person;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v5, 0x0

    .line 287
    :goto_0
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/details/n;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/event/details/n;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/n;->c(Lam/sunrise/android/calendar/ui/event/details/n;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/event/details/n;->d(Lam/sunrise/android/calendar/ui/event/details/n;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/event/details/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 285
    :cond_0
    array-length v5, v0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    check-cast p2, [Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/t;->a(Landroid/support/v4/a/d;[Lam/sunrise/android/calendar/api/models/datas/Person;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<[",
            "Lam/sunrise/android/calendar/api/models/datas/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/t;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->f(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/ab;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/ab;->b()V

    .line 312
    return-void
.end method
