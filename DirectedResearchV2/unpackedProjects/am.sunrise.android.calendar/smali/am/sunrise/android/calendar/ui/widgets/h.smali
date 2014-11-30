.class Lam/sunrise/android/calendar/ui/widgets/h;
.super Lam/sunrise/android/calendar/ui/widgets/g;
.source "BugFixedSlidingPaneLayout.java"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 1389
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/g;-><init>()V

    .line 1391
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getDisplayList"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/h;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    :try_start_1
    const-class v0, Landroid/view/View;

    const-string v1, "mRecreateDisplayList"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/h;->b:Ljava/lang/reflect/Field;

    .line 1397
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/h;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1401
    :goto_1
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1398
    :catch_1
    move-exception v0

    .line 1399
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1405
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/h;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/h;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 1407
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/h;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1408
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/h;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/g;->a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V

    .line 1418
    :goto_1
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Error refreshing display list state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method
