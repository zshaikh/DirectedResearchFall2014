.class Lorg/c/a/b/h;
.super Ljava/lang/Object;
.source "HttpFields.java"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/util/GregorianCalendar;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    .line 92
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/c/a/b/e;->a:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/b/f;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/c/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x20

    .line 99
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    iget-object v0, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 102
    iget-object v0, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 103
    iget-object v1, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 104
    iget-object v2, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 105
    iget-object v3, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 106
    div-int/lit8 v4, v3, 0x64

    .line 107
    rem-int/lit8 v3, v3, 0x64

    .line 109
    iget-object v5, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 110
    iget-object v6, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 111
    iget-object v7, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 113
    iget-object v8, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/c/a/b/e;->b()[Ljava/lang/String;

    move-result-object v9

    aget-object v0, v9, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 118
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/c/a/b/e;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 122
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 124
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 126
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v6}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 128
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v7}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 130
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    const-string v1, " GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lorg/c/a/b/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;J)V
    .locals 11

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/16 v8, 0x20

    .line 140
    iget-object v0, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 142
    iget-object v0, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 144
    iget-object v2, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 145
    iget-object v3, p0, Lorg/c/a/b/h;->b:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 146
    rem-int/lit16 v3, v3, 0x2710

    .line 148
    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    const-wide/32 v6, 0x15180

    rem-long/2addr v4, v6

    long-to-int v4, v4

    .line 149
    rem-int/lit8 v5, v4, 0x3c

    .line 150
    div-int/lit8 v4, v4, 0x3c

    .line 151
    rem-int/lit8 v6, v4, 0x3c

    .line 152
    div-int/lit8 v4, v4, 0x3c

    .line 154
    invoke-static {}, Lorg/c/a/b/e;->b()[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p1, v1}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 159
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Lorg/c/a/b/e;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    div-int/lit8 v0, v3, 0x64

    invoke-static {p1, v0}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 163
    rem-int/lit8 v0, v3, 0x64

    invoke-static {p1, v0}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 165
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p1, v4}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 167
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p1, v6}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 169
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p1, v5}, Lorg/c/a/d/p;->a(Ljava/lang/StringBuilder;I)V

    .line 171
    const-string v0, " GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    return-void
.end method
