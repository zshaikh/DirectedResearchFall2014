.class Lcom/android/datetimepicker/b;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackController.java"


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/a;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/datetimepicker/b;->a:Lcom/android/datetimepicker/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/datetimepicker/b;->a:Lcom/android/datetimepicker/a;

    iget-object v1, p0, Lcom/android/datetimepicker/b;->a:Lcom/android/datetimepicker/a;

    invoke-static {v1}, Lcom/android/datetimepicker/a;->a(Lcom/android/datetimepicker/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/datetimepicker/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/datetimepicker/a;->a(Lcom/android/datetimepicker/a;Z)Z

    .line 36
    return-void
.end method
