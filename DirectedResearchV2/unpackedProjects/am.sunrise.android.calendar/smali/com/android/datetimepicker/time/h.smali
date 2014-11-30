.class Lcom/android/datetimepicker/time/h;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/f;


# direct methods
.method private constructor <init>(Lcom/android/datetimepicker/time/f;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/datetimepicker/time/h;->a:Lcom/android/datetimepicker/time/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/datetimepicker/time/f;Lcom/android/datetimepicker/time/g;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/h;-><init>(Lcom/android/datetimepicker/time/f;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/datetimepicker/time/h;->a:Lcom/android/datetimepicker/time/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/f;->invalidate()V

    .line 396
    return-void
.end method
