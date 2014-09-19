.class public Lcom/example/calender1/AgendaFutureActivity;
.super Landroid/app/Activity;
.source "AgendaFutureActivity.java"


# static fields
.field static final DATE_DIALOG_ID:I


# instance fields
.field private arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cal:Landroid/widget/CalendarView;

.field private db:Lcom/example/calender1/DBAdapter;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listEvent:Landroid/widget/ListView;

.field private selectedDate:Ljava/lang/String;

.field private tvDisplayDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->list:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/example/calender1/DBAdapter;

    invoke-direct {v0, p0}, Lcom/example/calender1/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 16
    return-void
.end method

.method private getAllFutureEvents(Ljava/lang/String;)V
    .locals 5
    .parameter "selectedDate"

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 78
    iget-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2, p1}, Lcom/example/calender1/DBAdapter;->getFutureEvents(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/example/calender1/AgendaFutureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "You Have "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Event(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    const/4 v4, 0x1

    .line 80
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->list:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 85
    const v3, 0x1090003

    iget-object v4, p0, Lcom/example/calender1/AgendaFutureActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 84
    iput-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->list:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Categry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Start Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "End Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->listEvent:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/example/calender1/AgendaFutureActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    iget-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    .line 110
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/example/calender1/AgendaFutureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    iget-object v2, p0, Lcom/example/calender1/AgendaFutureActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 105
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 106
    iget-object v3, p0, Lcom/example/calender1/AgendaFutureActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v3}, Lcom/example/calender1/DBAdapter;->close()V

    .line 108
    throw v2
.end method

.method private intialization()V
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/example/calender1/AgendaFutureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->tvDisplayDate:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/example/calender1/AgendaFutureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->listEvent:Landroid/widget/ListView;

    .line 61
    new-instance v0, Landroid/widget/CalendarView;

    invoke-direct {v0, p0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->cal:Landroid/widget/CalendarView;

    .line 62
    iget-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->cal:Landroid/widget/CalendarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/example/calender1/AgendaFutureActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/example/calender1/AgendaFutureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectedDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->selectedDate:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/example/calender1/AgendaFutureActivity;->intialization()V

    .line 46
    iget-object v0, p0, Lcom/example/calender1/AgendaFutureActivity;->selectedDate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/example/calender1/AgendaFutureActivity;->getAllFutureEvents(Ljava/lang/String;)V

    .line 49
    return-void
.end method
