.class Lcom/example/calender1/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/MainActivity;->setListenerToCalender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 6
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/example/calender1/MainActivity;->selectedDate:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    .line 373
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    .line 374
    const v4, 0x1090003

    iget-object v5, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v5, v5, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 373
    iput-object v2, v1, Lcom/example/calender1/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 378
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v1, v1, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 379
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v1, v1, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v2, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v2, v2, Lcom/example/calender1/MainActivity;->selectedDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/example/calender1/DBAdapter;->getDayEvents(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v1, v1, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Categry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Start Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "End Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 394
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Event ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 397
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v1, v1, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    .line 409
    iget-object v1, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v1, v1, Lcom/example/calender1/MainActivity;->listEvent:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/example/calender1/MainActivity$6;->this$0:Lcom/example/calender1/MainActivity;

    iget-object v2, v2, Lcom/example/calender1/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    return-void
.end method
