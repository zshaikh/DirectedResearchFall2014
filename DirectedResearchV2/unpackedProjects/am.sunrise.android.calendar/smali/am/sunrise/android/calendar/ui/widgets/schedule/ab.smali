.class public Lam/sunrise/android/calendar/ui/widgets/schedule/ab;
.super Lam/sunrise/android/calendar/ui/mainview/k;
.source "ScheduleViewOccurrenceData.java"


# instance fields
.field A:I

.field B:Z

.field C:Z

.field D:Landroid/graphics/RectF;

.field E:Landroid/text/StaticLayout;

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 16
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/k;-><init>()V

    .line 23
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    .line 25
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    return-void
.end method
