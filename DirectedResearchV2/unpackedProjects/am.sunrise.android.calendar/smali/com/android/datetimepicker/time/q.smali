.class Lcom/android/datetimepicker/time/q;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/l;


# direct methods
.method private constructor <init>(Lcom/android/datetimepicker/time/l;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/datetimepicker/time/q;->a:Lcom/android/datetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/datetimepicker/time/l;Lcom/android/datetimepicker/time/m;)V
    .locals 0

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/q;-><init>(Lcom/android/datetimepicker/time/l;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 979
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/datetimepicker/time/q;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v0, p2}, Lcom/android/datetimepicker/time/l;->b(Lcom/android/datetimepicker/time/l;I)Z

    move-result v0

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
