.class public Lcom/dolphin/browser/DolphinService/ui/cg;
.super Landroid/widget/CursorAdapter;
.source "PasswordAdapter.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:I

.field private static c:I


# instance fields
.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "host"

    aput-object v1, v0, v3

    const-string v1, "username"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/DolphinService/ui/cg;->a:[Ljava/lang/String;

    .line 34
    sput v3, Lcom/dolphin/browser/DolphinService/ui/cg;->b:I

    .line 35
    sput v4, Lcom/dolphin/browser/DolphinService/ui/cg;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->d:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/cg;->a()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/cg;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->e:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/cg;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/cg;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/cg;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->e:I

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/cg;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/cg;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->f:Z

    if-eqz v0, :cond_0

    .line 135
    iput-boolean v1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->g:Z

    .line 157
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-boolean v1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->f:Z

    .line 141
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ck;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/ck;-><init>(Lcom/dolphin/browser/DolphinService/ui/cg;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/cg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/fo;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v1

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/l/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/cg;->a()V

    .line 128
    return-void
.end method

.method protected a(Lmobi/mgeek/TunnyBrowser/fo;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/dolphin/browser/DolphinService/ui/cg;->b:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lmobi/mgeek/TunnyBrowser/fo;->a(Ljava/lang/String;)V

    .line 61
    sget v0, Lcom/dolphin/browser/DolphinService/ui/cg;->c:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lmobi/mgeek/TunnyBrowser/fo;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/fo;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 65
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/ch;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/ch;-><init>(Lcom/dolphin/browser/DolphinService/ui/cg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method protected b()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 161
    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v5

    .line 164
    :cond_1
    const-string v7, "date DESC"

    .line 165
    const-string v1, "%s=? AND %s=? AND %s=0 AND %s is not null"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "email"

    aput-object v3, v2, v9

    const-string v3, "logintype"

    aput-object v3, v2, v10

    const-string v3, "deleted"

    aput-object v3, v2, v11

    const-string v3, "username"

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 170
    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    const-string v1, "password"

    sget-object v2, Lcom/dolphin/browser/DolphinService/ui/cg;->a:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 174
    const-string v0, "%s is null AND %s=0 AND %s is not null"

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "email"

    aput-object v2, v1, v9

    const-string v2, "deleted"

    aput-object v2, v1, v10

    const-string v2, "username"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    const-string v1, "password"

    sget-object v2, Lcom/dolphin/browser/DolphinService/ui/cg;->a:[Ljava/lang/String;

    move-object v4, v5

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 181
    if-eqz v8, :cond_2

    if-nez v0, :cond_4

    .line 182
    :cond_2
    if-eqz v8, :cond_3

    .line 183
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_3
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 193
    :cond_4
    new-instance v5, Lcom/dolphin/browser/provider/t;

    new-array v1, v11, [Landroid/database/Cursor;

    aput-object v8, v1, v9

    aput-object v0, v1, v10

    invoke-direct {v5, v1}, Lcom/dolphin/browser/provider/t;-><init>([Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lmobi/mgeek/TunnyBrowser/fo;

    invoke-virtual {p0, p1, p3}, Lcom/dolphin/browser/DolphinService/ui/cg;->a(Lmobi/mgeek/TunnyBrowser/fo;Landroid/database/Cursor;)V

    .line 56
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/cg;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 114
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fo;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/cg;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmobi/mgeek/TunnyBrowser/fo;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/cg;->a(Lmobi/mgeek/TunnyBrowser/fo;Landroid/database/Cursor;)V

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fo;

    invoke-direct {v0, p1}, Lmobi/mgeek/TunnyBrowser/fo;-><init>(Landroid/content/Context;)V

    .line 50
    return-object v0
.end method
