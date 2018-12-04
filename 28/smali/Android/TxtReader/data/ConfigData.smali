.class public LAndroid/TxtReader/data/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"

# interfaces
.implements LAndroid/TxtReader/data/ConfigConstants;


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "config"

.field private static final KEY_AUTOSAVE_BOOKMARK:Ljava/lang/String; = "autosave_bookmark"

.field private static final KEY_CUSTOM_ENCODE:Ljava/lang/String; = "custom_encode"

.field private static final KEY_ENCODE:Ljava/lang/String; = "encode"

.field private static final KEY_FILE_FILTER:Ljava/lang/String; = "filefilter"

.field private static final KEY_FONTSIZE:Ljava/lang/String; = "fontsize"

.field private static final KEY_LASTFILE:Ljava/lang/String; = "lastfile"

.field private static final KEY_SCREEN_MODE:Ljava/lang/String; = "screenmode"

.field private static context:Landroid/content/Context;

.field private static instance:LAndroid/TxtReader/data/ConfigData;


# instance fields
.field private autoSaveDelay:I

.field private customEncode:Ljava/lang/String;

.field private encode:Ljava/lang/String;

.field private fileFilter:I

.field private fontSize:F

.field private isAutoSaveChanged:Z

.field private isEncodeChanged:Z

.field private isFontSizeChanged:Z

.field private isScreenModeChanged:Z

.field private lastFile:Ljava/lang/String;

.field private screenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, LAndroid/TxtReader/data/ConfigData;

    invoke-direct {v0}, LAndroid/TxtReader/data/ConfigData;-><init>()V

    sput-object v0, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, LAndroid/TxtReader/data/ConfigData;->fontSize:F

    .line 21
    const-string v0, ""

    iput-object v0, p0, LAndroid/TxtReader/data/ConfigData;->lastFile:Ljava/lang/String;

    .line 23
    const-string v0, "GBK"

    iput-object v0, p0, LAndroid/TxtReader/data/ConfigData;->encode:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, LAndroid/TxtReader/data/ConfigData;->customEncode:Ljava/lang/String;

    .line 27
    iput v1, p0, LAndroid/TxtReader/data/ConfigData;->screenMode:I

    .line 29
    iput v2, p0, LAndroid/TxtReader/data/ConfigData;->fileFilter:I

    .line 31
    iput v2, p0, LAndroid/TxtReader/data/ConfigData;->autoSaveDelay:I

    .line 33
    iput-boolean v1, p0, LAndroid/TxtReader/data/ConfigData;->isEncodeChanged:Z

    .line 34
    iput-boolean v1, p0, LAndroid/TxtReader/data/ConfigData;->isFontSizeChanged:Z

    .line 35
    iput-boolean v1, p0, LAndroid/TxtReader/data/ConfigData;->isScreenModeChanged:Z

    .line 36
    iput-boolean v1, p0, LAndroid/TxtReader/data/ConfigData;->isAutoSaveChanged:Z

    .line 13
    return-void
.end method

.method public static getInstance()LAndroid/TxtReader/data/ConfigData;
    .locals 1

    .prologue
    .line 58
    sget-object v0, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    return-object v0
.end method

.method public static loadConfigData(Landroid/content/Context;)V
    .locals 6
    .param p0, "ct"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    sput-object p0, LAndroid/TxtReader/data/ConfigData;->context:Landroid/content/Context;

    .line 66
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->context:Landroid/content/Context;

    const-string v2, "config"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "config":Landroid/content/SharedPreferences;
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "fontsize"

    const/high16 v3, 0x41800000    # 16.0f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setFontSize(F)V

    .line 69
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "lastfile"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setLastFile(Ljava/lang/String;)V

    .line 70
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "encode"

    const-string v3, "GBK"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setEncode(Ljava/lang/String;)V

    .line 71
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "custom_encode"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setCustomEncode(Ljava/lang/String;)V

    .line 72
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "screenmode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setScreenMode(I)V

    .line 74
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "filefilter"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setFileFilter(I)V

    .line 76
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    const-string v2, "autosave_bookmark"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, LAndroid/TxtReader/data/ConfigData;->setAutoSaveDelay(I)V

    .line 79
    sget-object v1, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v1}, LAndroid/TxtReader/data/ConfigData;->clearChanged()V

    .line 80
    return-void
.end method

.method public static saveConfigFile()V
    .locals 5

    .prologue
    .line 86
    sget-object v2, LAndroid/TxtReader/data/ConfigData;->context:Landroid/content/Context;

    const-string v3, "config"

    .line 87
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "config":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fontsize"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getFontSize()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v2, "lastfile"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v2, "encode"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getEncode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v2, "custom_encode"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getCustomEncode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "screenmode"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getScreenMode()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "filefilter"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getFileFilter()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "autosave_bookmark"

    sget-object v3, LAndroid/TxtReader/data/ConfigData;->instance:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getAutoSaveDelay()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method


# virtual methods
.method public clearChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isEncodeChanged:Z

    .line 169
    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isFontSizeChanged:Z

    .line 170
    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isScreenModeChanged:Z

    .line 171
    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isAutoSaveChanged:Z

    .line 172
    return-void
.end method

.method public getAutoSaveDelay()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->autoSaveDelay:I

    return v0
.end method

.method public getCustomEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, LAndroid/TxtReader/data/ConfigData;->customEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, LAndroid/TxtReader/data/ConfigData;->encode:Ljava/lang/String;

    return-object v0
.end method

.method public getFileFilter()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->fileFilter:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->fontSize:F

    return v0
.end method

.method public getLastFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, LAndroid/TxtReader/data/ConfigData;->lastFile:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenMode()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->screenMode:I

    return v0
.end method

.method public isAutoSaveChanged()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isAutoSaveChanged:Z

    return v0
.end method

.method public isEncodeChanged()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isEncodeChanged:Z

    return v0
.end method

.method public isFontSizeChanged()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isFontSizeChanged:Z

    return v0
.end method

.method public isScreenModeChanged()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isScreenModeChanged:Z

    return v0
.end method

.method public setAutoSaveDelay(I)V
    .locals 1
    .param p1, "autoSaveDelay"    # I

    .prologue
    .line 241
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->autoSaveDelay:I

    if-eq v0, p1, :cond_0

    .line 242
    iput p1, p0, LAndroid/TxtReader/data/ConfigData;->autoSaveDelay:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isAutoSaveChanged:Z

    .line 245
    :cond_0
    return-void
.end method

.method public setCustomEncode(Ljava/lang/String;)V
    .locals 0
    .param p1, "customEncode"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, LAndroid/TxtReader/data/ConfigData;->customEncode:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setEncode(Ljava/lang/String;)V
    .locals 1
    .param p1, "encode"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, LAndroid/TxtReader/data/ConfigData;->encode:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 145
    iput-object p1, p0, LAndroid/TxtReader/data/ConfigData;->encode:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isEncodeChanged:Z

    .line 148
    :cond_0
    return-void
.end method

.method public setFileFilter(I)V
    .locals 0
    .param p1, "fileFilter"    # I

    .prologue
    .line 226
    iput p1, p0, LAndroid/TxtReader/data/ConfigData;->fileFilter:I

    .line 227
    return-void
.end method

.method public setFontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F

    .prologue
    .line 126
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->fontSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 127
    iput p1, p0, LAndroid/TxtReader/data/ConfigData;->fontSize:F

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isFontSizeChanged:Z

    .line 130
    :cond_0
    return-void
.end method

.method public setLastFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastFile"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, LAndroid/TxtReader/data/ConfigData;->lastFile:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setScreenMode(I)V
    .locals 1
    .param p1, "screenMode"    # I

    .prologue
    .line 201
    iget v0, p0, LAndroid/TxtReader/data/ConfigData;->screenMode:I

    if-eq v0, p1, :cond_0

    .line 202
    iput p1, p0, LAndroid/TxtReader/data/ConfigData;->screenMode:I

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, LAndroid/TxtReader/data/ConfigData;->isScreenModeChanged:Z

    .line 205
    :cond_0
    return-void
.end method
