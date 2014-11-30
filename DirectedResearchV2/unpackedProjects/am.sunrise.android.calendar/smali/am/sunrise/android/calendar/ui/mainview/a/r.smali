.class public Lam/sunrise/android/calendar/ui/mainview/a/r;
.super Ljava/lang/Object;
.source "ScheduleViewRangeOccurrencesLoaderTask.java"


# direct methods
.method public static a(Landroid/content/ContentResolver;)Lam/sunrise/android/calendar/ui/mainview/a/v;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/v;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method static synthetic a(Landroid/util/SparseArray;Ljava/util/Calendar;I)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lam/sunrise/android/calendar/ui/mainview/a/r;->b(Landroid/util/SparseArray;Ljava/util/Calendar;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/util/SparseArray;Ljava/util/Calendar;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/l;",
            ">;",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 498
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-gt v3, p2, :cond_1

    .line 499
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/mainview/a/l;

    .line 500
    if-nez v1, :cond_0

    .line 501
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/l;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/l;-><init>()V

    .line 502
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    move-object v1, v2

    .line 504
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 498
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 508
    :cond_1
    return-object v4
.end method
