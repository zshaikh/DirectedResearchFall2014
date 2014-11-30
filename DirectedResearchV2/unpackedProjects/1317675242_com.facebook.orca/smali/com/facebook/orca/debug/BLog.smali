.class public Lcom/facebook/orca/debug/BLog;
.super Ljava/lang/Object;
.source "BLog.java"


# static fields
.field private static a:Lcom/facebook/orca/debug/OrcaLog;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/facebook/orca/debug/BLog;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 48
    sput p0, Lcom/facebook/orca/debug/BLog;->b:I

    .line 49
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-gt v0, p0, :cond_0

    .line 322
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 323
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/OrcaLog;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/debug/OrcaLog;)V
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 73
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/OrcaLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 125
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 126
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/OrcaLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 211
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 212
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/OrcaLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 108
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/OrcaLog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 160
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 161
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/OrcaLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 143
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/OrcaLog;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 195
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 196
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/OrcaLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 178
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/OrcaLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 246
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 247
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/OrcaLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 228
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 229
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/OrcaLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 301
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 302
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    if-eqz v0, :cond_1

    .line 303
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/OrcaLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/OrcaLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
