.class Lcom/example/calender1/EventActivity$2;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/calender1/EventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/EventActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/EventActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EventActivity$2;->this$0:Lcom/example/calender1/EventActivity;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "view"
    .parameter "hours"
    .parameter "minute"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/example/calender1/EventActivity$2;->this$0:Lcom/example/calender1/EventActivity;

    #getter for: Lcom/example/calender1/EventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/example/calender1/EventActivity;->access$1(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method
