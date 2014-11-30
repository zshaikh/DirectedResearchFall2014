.class Lcom/android/datetimepicker/time/k;
.super Ljava/lang/Object;
.source "RadialTextsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/i;


# direct methods
.method private constructor <init>(Lcom/android/datetimepicker/time/i;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/datetimepicker/time/k;->a:Lcom/android/datetimepicker/time/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/datetimepicker/time/i;Lcom/android/datetimepicker/time/j;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/k;-><init>(Lcom/android/datetimepicker/time/i;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/datetimepicker/time/k;->a:Lcom/android/datetimepicker/time/i;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/i;->invalidate()V

    .line 357
    return-void
.end method
