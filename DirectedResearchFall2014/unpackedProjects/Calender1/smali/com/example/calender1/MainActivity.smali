.class public Lcom/example/calender1/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field add:Landroid/widget/Button;

.field arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field cal:Landroid/widget/CalendarView;

.field public final db:Lcom/example/calender1/DBAdapter;

.field events:Landroid/widget/TextView;

.field futureAgenda:Landroid/widget/Button;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field listEvent:Landroid/widget/ListView;

.field rl:Landroid/widget/RelativeLayout;

.field selectedDate:Ljava/lang/String;

.field showAgenda:Landroid/widget/Button;

.field showCategory:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/example/calender1/DBAdapter;

    invoke-direct {v0, p0}, Lcom/example/calender1/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method private getDayEvents(Ljava/lang/String;)V
    .locals 5
    .parameter "currentDate"

    .prologue
    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 310
    iget-object v2, p0, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2, p1}, Lcom/example/calender1/DBAdapter;->getDayEvents(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 315
    .local v0, c:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    .line 318
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 319
    const v3, 0x1090003

    iget-object v4, p0, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 318
    iput-object v2, p0, Lcom/example/calender1/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    .line 326
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

    .line 327
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

    .line 328
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

    .line 329
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

    .line 330
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

    .line 331
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Event ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/example/calender1/MainActivity;->listEvent:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/example/calender1/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    iget-object v2, p0, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    .line 356
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/example/calender1/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    const/4 v4, 0x1

    .line 347
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    iget-object v2, p0, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 350
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 351
    iget-object v3, p0, Lcom/example/calender1/MainActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v3}, Lcom/example/calender1/DBAdapter;->close()V

    .line 353
    throw v2
.end method

.method private intialization()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 158
    const v4, 0x7f090035

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->rl:Landroid/widget/RelativeLayout;

    .line 159
    const v4, 0x7f09001b

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->events:Landroid/widget/TextView;

    .line 160
    const v4, 0x7f090038

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->listEvent:Landroid/widget/ListView;

    .line 162
    new-instance v4, Landroid/widget/CalendarView;

    invoke-direct {v4, p0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->cal:Landroid/widget/CalendarView;

    .line 163
    iget-object v4, p0, Lcom/example/calender1/MainActivity;->cal:Landroid/widget/CalendarView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 165
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/example/calender1/MainActivity;->events:Landroid/widget/TextView;

    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    const/16 v4, 0xa

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    iget-object v4, p0, Lcom/example/calender1/MainActivity;->cal:Landroid/widget/CalendarView;

    invoke-virtual {v4, v2}, Landroid/widget/CalendarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v4, p0, Lcom/example/calender1/MainActivity;->cal:Landroid/widget/CalendarView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CalendarView;->setShowWeekNumber(Z)V

    .line 176
    iget-object v4, p0, Lcom/example/calender1/MainActivity;->rl:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/example/calender1/MainActivity;->cal:Landroid/widget/CalendarView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    const v4, 0x7f090036

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 179
    .local v3, text:Landroid/widget/RelativeLayout;
    const-string v4, "#CCCC00"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 180
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 181
    const v5, 0x1090003

    iget-object v6, p0, Lcom/example/calender1/MainActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 180
    iput-object v4, p0, Lcom/example/calender1/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 183
    const v4, 0x7f09003e

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->add:Landroid/widget/Button;

    .line 184
    const v4, 0x7f09003a

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->showAgenda:Landroid/widget/Button;

    .line 185
    const v4, 0x7f09003d

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->showCategory:Landroid/widget/Button;

    .line 186
    const v4, 0x7f09003b

    invoke-virtual {p0, v4}, Lcom/example/calender1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->futureAgenda:Landroid/widget/Button;

    .line 189
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-d-yyyy"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 191
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/example/calender1/MainActivity;->selectedDate:Ljava/lang/String;

    .line 193
    return-void
.end method

.method private setListenerOnSelectedItem()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->listEvent:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->listEvent:Landroid/widget/ListView;

    new-instance v1, Lcom/example/calender1/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/example/calender1/MainActivity$4;-><init>(Lcom/example/calender1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    return-void
.end method

.method private setListenerToShowAgenda()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->showAgenda:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/example/calender1/MainActivity$3;-><init>(Lcom/example/calender1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private setListenerToShowCategory()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->showCategory:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/example/calender1/MainActivity$2;-><init>(Lcom/example/calender1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method private setListenerToShowFutureAgenda()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->futureAgenda:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/calender1/MainActivity$1;-><init>(Lcom/example/calender1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method private setListernerOnAddEvent()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->add:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/example/calender1/MainActivity$5;-><init>(Lcom/example/calender1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/example/calender1/MainActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/example/calender1/MainActivity;->intialization()V

    .line 54
    invoke-direct {p0}, Lcom/example/calender1/MainActivity;->setListenerOnSelectedItem()V

    .line 55
    invoke-direct {p0}, Lcom/example/calender1/MainActivity;->setListernerOnAddEvent()V

    .line 56
    invoke-virtual {p0}, Lcom/example/calender1/MainActivity;->setListenerToCalender()V

    .line 57
    invoke-direct {p0}, Lcom/example/calender1/MainActivity;->setListenerToShowAgenda()V

    .line 58
    invoke-direct {p0}, Lcom/example/calender1/MainActivity;->setListenerToShowFutureAgenda()V

    .line 59
    invoke-direct {p0}, Lcom/example/calender1/MainActivity;->setListenerToShowCategory()V

    .line 60
    iget-object v1, p0, Lcom/example/calender1/MainActivity;->selectedDate:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/example/calender1/MainActivity;->getDayEvents(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/example/calender1/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    const/4 v3, 0x1

    .line 63
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 422
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->selectedDate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/example/calender1/MainActivity;->getDayEvents(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setListenerToCalender()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/example/calender1/MainActivity;->cal:Landroid/widget/CalendarView;

    new-instance v1, Lcom/example/calender1/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/example/calender1/MainActivity$6;-><init>(Lcom/example/calender1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 414
    return-void
.end method
