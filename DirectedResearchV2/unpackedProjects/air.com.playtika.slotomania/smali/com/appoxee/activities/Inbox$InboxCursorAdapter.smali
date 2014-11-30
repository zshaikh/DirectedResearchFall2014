.class public final Lcom/appoxee/activities/Inbox$InboxCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "Inbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/Inbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InboxCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method public constructor <init>(Lcom/appoxee/activities/Inbox;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "flags"    # I

    .prologue
    .line 410
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    .line 411
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 412
    iput-object p2, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->mContext:Landroid/content/Context;

    .line 413
    return-void
.end method

.method public constructor <init>(Lcom/appoxee/activities/Inbox;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "autoRequery"    # Z

    .prologue
    .line 415
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    .line 416
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 417
    iput-object p2, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->mContext:Landroid/content/Context;

    .line 418
    return-void
.end method

.method private getDateText(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const-string v5, "dd/MM/yy"

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "dateText":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 487
    .local v2, "formatterTo":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 488
    .local v1, "deviceNow":Ljava/util/Date;
    const-string v3, "dd/MM/yy"

    invoke-static {v5, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    const-string v4, "dd/MM/yy"

    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 488
    if-nez v3, :cond_0

    .line 490
    const-string v3, "h:mmaa"

    invoke-static {v3, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    .line 492
    :cond_0
    const-string v3, "dd/MM/yy"

    invoke-static {v5, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string v8, "inbox_message_unread_color"

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;

    .line 437
    .local v7, "viewHolder":Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;
    const-string v8, "_id"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 438
    .local v5, "messageId":J
    const/4 v4, 0x0

    .line 441
    .local v4, "message":Lcom/appoxee/inbox/Message;
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/appoxee/inbox/Message;

    move-object v4, v0

    .line 443
    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->getPostDate()Ljava/util/Date;

    move-result-object v1

    .line 444
    .local v1, "date":Ljava/util/Date;
    invoke-direct {p0, v1}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->getDateText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "dateText":Ljava/lang/String;
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDate:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->isRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 452
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v9}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 453
    const-string v10, "inbox_message_read_color"

    invoke-static {v10}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 452
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 456
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDescription:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v9}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 457
    const-string v10, "inbox_message_content_read_color"

    invoke-static {v10}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 456
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDescription:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 460
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDate:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v9}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 461
    const-string v10, "inbox_message_unread_color"

    invoke-static {v10}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 460
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageLayout:Landroid/widget/RelativeLayout;

    .line 463
    const-string v9, "inbox_message_read_backgound_color"

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 462
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 482
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateText":Ljava/lang/String;
    :goto_0
    return-void

    .line 465
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v2    # "dateText":Ljava/lang/String;
    :cond_0
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v9}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 466
    const-string v10, "inbox_message_unread_color"

    invoke-static {v10}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 465
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 469
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDescription:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v9}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 470
    const-string v10, "inbox_message_unread_color"

    invoke-static {v10}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 469
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDescription:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 473
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDate:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v9}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 474
    const-string v10, "inbox_message_unread_color"

    invoke-static {v10}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 473
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    iget-object v8, v7, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageLayout:Landroid/widget/RelativeLayout;

    .line 476
    const-string v9, "inbox_message_unread_backgound_color"

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 475
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateText":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 479
    .local v3, "e1":Ljava/sql/SQLException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Inbox failure, failed to load message with ID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 480
    invoke-static {v3}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 422
    iget-object v2, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getInboxListItemView()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;-><init>(Lcom/appoxee/activities/Inbox$InboxCursorAdapter;)V

    .line 424
    .local v1, "viewHolder":Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;
    const-string v2, "inbox_message_date"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/appoxee/activities/Inbox$InboxCursorAdapter;
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDate:Landroid/widget/TextView;

    .line 425
    const-string v2, "inbox_message_title"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageTitle:Landroid/widget/TextView;

    .line 427
    const-string v2, "inbox_message_description"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 426
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageDescription:Landroid/widget/TextView;

    .line 429
    const-string v2, "inbox_message_layout"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 428
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, v1, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->messageLayout:Landroid/widget/RelativeLayout;

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 431
    return-object v0
.end method
